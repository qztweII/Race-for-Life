switch (state)
{
    case "falling":

        vsp += gravity;
        y += vsp;

        if (y >= soil_y)
		{
		    y = soil_y;
		    vsp = 0;
		    state = "impact";
		    
		}

    break;

    case "impact":

        image_yscale = lerp(image_yscale, 1, 0.2);

        if (abs(image_yscale - 1) < 0.05)
        {
            state = "grow";
            alarm[0] = 37; // wait before root begins
        }

    break;

    case "grow":
        // waiting for alarm
    break;
}