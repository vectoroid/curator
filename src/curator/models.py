import pydantic


class NewsSource(pydantic.BaseModel):
    """
    """
    name: str
    url: pydantic.HttpUrl
    limit: int = pydantic.Field(5, description="Total number of most recent articles to fetch.")


class SourceList(pydantic.BaseModel):
    """
    """
    sources: list[NewsSource]