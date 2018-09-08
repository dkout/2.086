function [ p_all,p_atleastone,N_points ] = guesser( quest_attributes )

p_all = 1/(quest_attributes(1,1)*quest_attributes(2,1)*quest_attributes(3,1));

p_atleastone = 1-(((quest_attributes(1,1)-1)/(quest_attributes(1,1))*((quest_attributes(2,1)-1)/quest_attributes(2,1))*((quest_attributes(3,1)-1)/quest_attributes(3,1))));

N_points = quest_attributes(1,2)/quest_attributes(1,1)+quest_attributes(2,2)/quest_attributes(2,1)+quest_attributes(3,2)/quest_attributes(3,1);

return
end

