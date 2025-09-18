local ComplexMath = {}
-- Returns a graph lookup table
local function solveGraph(equation, precision)
    --Unimplemented
end

function ComplexMath:CalcDistance(pos1: Vector3, pos2: Vector3)
	local xdist = pos1.X - pos2.X
	local ydist = pos1.Y - pos2.Y
	local zdist = pos1.Z - pos2.Z
	
	return math.sqrt((xdist ^ 2) + (ydist ^ 2) + (zdist ^ 2))
end

function ComplexMath:CalcDistanceNoZ(pos1: Vector3, pos2: Vector3)
	local xdist = pos1.X - pos2.X
	local ydist = pos1.Y - pos2.Y

	return math.sqrt((xdist ^ 2) + (ydist ^ 2))
end

function ComplexMath:getInverseSine(pos1: Vector3, pos2: Vector3, pos3: Vector3)
	local adj = ComplexMath:CalcDistanceNoZ(pos1, pos2)
	local opp = ComplexMath:CalcDistanceNoZ(pos2, pos3)
	local hyp = ComplexMath:CalcDistanceNoZ(pos1, pos3)
	
	return math.asin(opp/hyp)
end

