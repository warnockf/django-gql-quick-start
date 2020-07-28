import graphene

class Query(graphene.ObjectType):
    hello_world: str = graphene.String()

    def resolve_hello_world(self, info, **kwargs):
        return "HELLO WORLD"

schema = graphene.Schema(query=Query)
