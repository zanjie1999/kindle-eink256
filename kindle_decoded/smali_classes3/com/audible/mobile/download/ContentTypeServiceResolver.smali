.class public final Lcom/audible/mobile/download/ContentTypeServiceResolver;
.super Ljava/lang/Object;
.source "ContentTypeServiceResolver.java"


# instance fields
.field private final contentTypeToService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/audible/mobile/download/ContentType;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/audible/mobile/download/service/BaseDownloadService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/audible/mobile/download/ContentTypeServiceResolver$1;

    invoke-direct {v0, p0}, Lcom/audible/mobile/download/ContentTypeServiceResolver$1;-><init>(Lcom/audible/mobile/download/ContentTypeServiceResolver;)V

    iput-object v0, p0, Lcom/audible/mobile/download/ContentTypeServiceResolver;->contentTypeToService:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getServiceForContentType(Lcom/audible/mobile/download/ContentType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/download/ContentType;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/audible/mobile/download/service/BaseDownloadService;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/audible/mobile/download/ContentTypeServiceResolver;->contentTypeToService:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method
