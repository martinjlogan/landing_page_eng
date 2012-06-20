FactoryGirl.define do
  factory :landing_page do
    meta_description 'We make the best custom mens shirts in the industry. You must try them on.'
    name 'custom mens shirts'
    tagline 'the best ever custom mens shirts'
    body 'We make the best custom mens shirts in the industry. You must try them on.'
    slide_show_slides { [FactoryGirl.build(:slide_show_slide)] }
    highlights { [FactoryGirl.build(:highlights)] }
  end

  factory :slide_show_slide do
    image 'my slide show image'
  end

  factory :highlight do
    title 'high quality'
	body 'we make the highest quality mens shirts'
  end
end
