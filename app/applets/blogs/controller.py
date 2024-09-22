"""Controller for blogs endpoints."""

from litestar import Controller, get
from litestar.response import Template


class BlogsController(Controller):
    """Houses all routes for /blogs endpoints."""

    path = "/blogs"

    @get()
    async def blogs_index(self) -> Template:
        """Home page for blogs."""
        return Template("blog_index.html")
