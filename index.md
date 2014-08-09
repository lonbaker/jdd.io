---
layout: default
---

<div class="post-listing">
  {% for post in site.posts %}
    {% if d != post.date %}
      <div class="dateseperator">{{ post.date | date_to_long_string }}</div>
      {% assign d = post.date %}
    {% endif %}
    <article class="post">
      <header>
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      </header>
      <a href="{{ post.url }}" class="excerpt"><p class="excerpt">
        {{ post.excerpt }} <i class="fa fa-arrow-circle-o-right"></i></a>
      </p></a>
    </article>
  {% endfor %}
</div>
