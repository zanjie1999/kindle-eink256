.class public Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;
.super Ljava/lang/Object;
.source "KLFSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/service/det/klf/KLFSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->values:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazon/kcp/service/det/klf/KLFSection$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/amazon/kcp/service/det/klf/KLFSection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/service/det/klf/KLFSection<",
            "TT;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/amazon/kcp/service/det/klf/KLFSection;

    iget-object v1, p0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->values:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/service/det/klf/KLFSection$1;)V

    return-object v0
.end method
