.class public Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;
.super Ljava/lang/Object;
.source "ResourceDetails.java"


# instance fields
.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private qualifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/ResourceType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceType;",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->path:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->name:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->type:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    .line 28
    iput-object p4, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->qualifiers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQualifiers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->qualifiers:Ljava/util/Map;

    return-object v0
.end method
