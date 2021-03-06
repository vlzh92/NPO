#include "geometrypair.h"

GeometryPair::GeometryPair(GeometryForm* theory, GeometryForm *practic)
    : std::pair<GeometryForm* const, GeometryForm* const>(theory, practic)
{
    first->alignZero();
    second->alignZero();
    second->scaleTo(first->box().size());
    truncated = GeometryForm::truncation(*first, *second);

    //estimate mac
    mac.resize(practic->modesCount(), truncated->modesCount());
    for (int i = 0; i != mac.height(); ++i) {
        for (int j = 0; j != mac.width(); ++j) {
            mac[i][j] = GeometryForm::MAC(practic, truncated, j, i);
        }
    }

    //estimate relations
    relation.clear();
    relation.resize(mac.height(),-1);
    size_t minForm(std::min(mac.width(), mac.height()));
    QBitArray taked;
    QBitArray taked2;
    taked.fill(false, static_cast<int>(mac.width()));
    taked2.fill(false, static_cast<int>(mac.height()));
    int max(-1), max2(-1);
    for (int kontrol(0); kontrol != relation.size(); ++kontrol)
    {
        for (int i = 0; i != minForm; ++i) {
            if (!taked2.testBit(i)) {
                for (int j = 1; j != mac.width(); ++j) {
                    if (!taked.testBit(j)) {
                        if (max == -1 || max2 == -1 || mac[max2][max] < mac[i][j]) {
                            max = j;max2 = i;
                        }
                    }
                }
            }
        }
        if (max == -1) continue;

        relation[max] = max2;
        taked2.setBit(max2);
        taked.setBit(max);
        max = -1; max2 = -1;
    }
}

