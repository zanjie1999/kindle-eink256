.class public Lcom/amazon/kindle/content/ContentDelete;
.super Ljava/lang/Object;
.source "ContentDelete.java"


# instance fields
.field private final bookIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentDelete;->bookIds:Ljava/util/Collection;

    .line 19
    iput-object p2, p0, Lcom/amazon/kindle/content/ContentDelete;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentDelete;->bookIds:Ljava/util/Collection;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentDelete;->userId:Ljava/lang/String;

    return-object v0
.end method
