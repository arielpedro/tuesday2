
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite sprite1;
	SESprite sprite2;
	SESprite sprite3;
	SESprite sprite4;
	SESprite text;
	double transparency;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("#0066FF"),get_scene_width(),get_scene_height());
		
		rsc.prepare_image("fish","fish",get_scene_width()*0.4);
		sprite1=add_sprite_for_image(SEImage.for_resource("fish"));
		sprite1.move(0,0);
		
		rsc.prepare_image("fish2","fish2",get_scene_width()*0.4);
		sprite2=add_sprite_for_image(SEImage.for_resource("fish2"));
		sprite2.move(0,get_scene_height()-sprite2.get_height());
		
		rsc.prepare_image("fish3","fish3",get_scene_width()*0.4);
		sprite3=add_sprite_for_image(SEImage.for_resource("fish3"));
		sprite3.move(get_scene_width()-sprite3.get_width(),0);
		
		rsc.prepare_image("fish5","fish5",get_scene_width()*0.4);
		sprite4=add_sprite_for_image(SEImage.for_resource("fish5"));
		sprite4.move(get_scene_width()-sprite4.get_width(),get_scene_height()-sprite4.get_height());
		
		rsc.prepare_font("myfont", "bold arial color=white outline=black",100);
		text = add_sprite_for_text("AQUARIUM KO","myfont");
		text.move(0.3*get_scene_width(),0);
		}
		
		public void on_key_press(String name, String str)
		{
			base.on_key_press(name, str);
			text.set_text("YOU'RE HOLDING\nON TO ME");
		}

		public void on_key_release(String name, String str)
		{
			base.on_key_release(name, str);
			text.set_text("BAT MO KO\nBINITAWAN");
		}

		public void on_pointer_press(SEPointerInfo pi)
		{
			 if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height()))
			 {
				sprite1.set_alpha(1);
				sprite2.set_alpha(0.5);
				sprite3.set_alpha(0.5);
				sprite4.set_alpha(0.5);
				text.set_text("BASS");
                text.move(0.25 * get_scene_width()-text.get_width()*0.5, 0.25 * get_scene_height()-text.get_height()*0.5);
			 }
	
            else if(pi.is_inside(0,get_scene_height()*0.5, 0.5*get_scene_width(), 0.5*get_scene_height())) 
			{
				sprite1.set_alpha(0.5);
				sprite2.set_alpha(1);
				sprite3.set_alpha(0.5);
				sprite4.set_alpha(0.5);
                text.set_text("FISH");
                text.move(0.1*get_scene_width(),0.6*get_scene_height());
            }

            else if(pi.is_inside(get_scene_width()*0.5,0, 0.5*get_scene_width(), 0.5*get_scene_height())) 
			{
				sprite1.set_alpha(0.5);
				sprite2.set_alpha(0.5);
				sprite3.set_alpha(1);
				sprite4.set_alpha(0.5);
                text.set_text("CRAB");
                text.move(0.5* get_scene_width(), 0.25*get_scene_height());
            }

            else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5, 0.5*get_scene_width(), 0.5*get_scene_height())) 
			{
				sprite1.set_alpha(0.5);
				sprite2.set_alpha(0.5);
				sprite3.set_alpha(0.5);
				sprite4.set_alpha(1);
                text.set_text("SQUID");
                text.move(0.5*get_scene_width(),0.75*get_scene_height());
            }
        }

		public void set_alpha(double alpha)
		{
            transparency=alpha;
        }

		public void cleanup()
		{
			base.cleanup();
		}
}

