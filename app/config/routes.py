"""Ingestion point for all app routes, to be sent into the Litestar app instance."""

from litestar.types import ControllerRouterHandler

from app.applets.blogs.controller import BlogsController
from app.applets.core.controller import CoreController

__all__ = ("BlogsController", "route_handlers")

route_handlers: list[ControllerRouterHandler] = [BlogsController, CoreController]
