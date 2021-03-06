/* This file is part of COVISE.

You can use it under the terms of the GNU Lesser General Public License
version 2.1 or later, see lgpl-2.1.txt.

* License: LGPL 2+ */

#ifndef OSC_START_CONDITIONS_GROUPS_TYPE_C_H
#define OSC_START_CONDITIONS_GROUPS_TYPE_C_H

#include "oscExport.h"
#include "oscObjectBase.h"
#include "oscObjectVariableArray.h"

#include "oscStartConditionsGroupTypeC.h"


namespace OpenScenario {

/// \class This class represents a generic OpenScenario Object
class OPENSCENARIOEXPORT oscStartConditionsGroupsTypeC: public oscObjectBase
{
public:
    oscStartConditionsGroupsTypeC()
    {
        OSC_OBJECT_ADD_MEMBER_OPTIONAL(startConditionGroup, "oscStartConditionsGroupTypeC");
    };

    oscStartConditionsGroupTypeCMember startConditionGroup;
};

typedef oscObjectVariableArray<oscStartConditionsGroupsTypeC *> oscStartConditionsGroupsTypeCArrayMember;

}

#endif /* OSC_START_CONDITIONS_GROUPS_TYPE_C_H */
