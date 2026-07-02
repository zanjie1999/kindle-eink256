.class public Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;
.super Ljava/lang/Object;
.source "KLFFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/service/det/klf/KLFFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/service/det/klf/KLFSection<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->sections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSection(Lcom/amazon/kcp/service/det/klf/KLFSection;)Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/service/det/klf/KLFSection<",
            "*>;)",
            "Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/amazon/kcp/service/det/klf/KLFFile;
    .locals 3

    .line 66
    new-instance v0, Lcom/amazon/kcp/service/det/klf/KLFFile;

    iget-object v1, p0, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->sections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/service/det/klf/KLFFile;-><init>(Ljava/util/List;Lcom/amazon/kcp/service/det/klf/KLFFile$1;)V

    return-object v0
.end method
