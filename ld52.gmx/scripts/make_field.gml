///make_field(x, y, w, h, fences)
var xx = argument0;
var yy = argument1;
var w = argument2;
var h = argument3;
var fences = argument4;

for (var i = 0; i < w; i++) {
    for (var j = 0; j < h; j++) {
        if !instance_position(xx + i * 8, yy + j * 8, grain)
           instance_create(xx + i * 8, yy + j * 8, grain);
    }
}

repeat(fences) {
    var fx = random_range(xx + 8, xx + w * 8 - 16)
    var fy = random_range(yy + 8, yy + h * 8 - 16)
    rot = choose(0, 90);
    var f = instance_create(fx, fy, fence);        
}
