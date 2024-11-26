for (var i = 0; i < array_length(stepevent_order); i++)
{
	with (stepevent_order[i])
		event_perform(ev_step, ev_step_normal);
}