class Blog {
  var img;
  var title;
  var desc;

  Blog(String img, String title, String desc) {
    this.img = img;
    this.title = title;
    this.desc = desc;
  }
}

List<Blog> blogs = [
  Blog(
      'https://images.unsplash.com/photo-1438401171849-74ac270044ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2235&q=80',
      'Seattle is the best city ever ♡ ',
      'Seattle came in at No. 39 in this year’s 2023 World’s Best Cities Report, a comprehensive annual study by Resonance Consultancy.Looking beyond tourist appeal, this ranking takes many factors into account. Among them: infrastructure, nature, the arts, entertainment, culture, diversity and business prosperity. And Seattle fared well.In particular, the report called out Seattle’s resilience in the face of the pandemic; the Emerald City was one of the first virus hotspots. And in turn, the city saw a mass exodus of professionals to the suburbs. However, urban life has made a comeback in the past year and Seattle has apparently avoided much of the pandemic’s devastating economic impact.Seattle remains a premier tech destination, home to companies like Zillow and Amazon, and ranks No. 6 for commercial leases in 2022 (so far). It also ranks No. 19 for overall prosperity.According to the rest of the report, the best 10 cities in the world include:1. London, England 2. Paris, France 3. New York City, USA 4. Tokyo, Japan 5. Dubai, United Arab Emirates 6. Barcelona, Spain 7. Rome, Italy 8. Madrid, Spain 9. Singapore, Republic of Singapore 10. Amsterdam, Netherlands.')
];
