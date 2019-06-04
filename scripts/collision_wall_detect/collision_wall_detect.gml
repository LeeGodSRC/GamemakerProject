//This chunk of code lets Frisk bump into walls.

/*
    argument0 = x or y velocity - 0 = x, 1 = y
    argument1 = what to hit
*/

var maxarg;
var i = 0;

if argument0 = 0
{
    x = round(x);
    maxarg = abs(velocity[0]);
    if (place_meeting(x +velocity[0], y, argument1))
    {
        while (!place_meeting(x+sign(velocity[0]), y, argument1) && i < maxarg)
        {
            x += sign(velocity[0]);
            i++;
        }
        velocity[0] = 0;
    }
}
else if argument0 = 1
{
    y = round(y);
    maxarg = abs(velocity[1]);
    if (place_meeting(x, y + velocity[1], argument1))
    {
        while (!place_meeting(x, y + sign(velocity[1]), argument1) && i < maxarg)
        {
            y += sign(velocity[1]);
            i++;
        }
        velocity[1] = 0;
    }
}
else
{
}