---
layout: default
---

<div class="post-listing">
  {% for post in site.posts %}
    {% if d != post.date %}
      <div class="dateseperator">{{ post.date | date_to_string }}</div>
      {% assign d = post.date %}
    {% endif %}
    <article class="post">
      <header>
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      </header>
      <div class="excerpt">
        {{ post.excerpt }} <i class="fa fa-arrow-circle-right"></i>
      </div>
    </article>
  {% endfor %}
</div>
