var distributionEquation = argument0;

#macro distribution_parallax 0

var t = random_range(0,1);

switch(distributionEquation){
	case distribution_parallax:
		return(exp(-exp(1)*t)-.05);
		break;
		
		
	default: return t;
}
