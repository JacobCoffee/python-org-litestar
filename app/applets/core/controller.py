"""Controller for core endpoints."""

from litestar import Controller, get
from litestar.response import Template


class CoreController(Controller):
    """Houses all routes for core endpoints."""

    @get()
    async def root_index(self) -> Template:
        """Home page."""
        return Template("index.html")
