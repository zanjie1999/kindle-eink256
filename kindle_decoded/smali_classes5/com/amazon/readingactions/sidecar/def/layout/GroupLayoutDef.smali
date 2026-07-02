.class public Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;
.super Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;
.source "GroupLayoutDef.java"


# instance fields
.field public final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;"
        }
    .end annotation
.end field

.field public final providesHeaderInfo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 34
    iput-object p3, p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;->groups:Ljava/util/List;

    .line 35
    iput-boolean p4, p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;->providesHeaderInfo:Z

    return-void
.end method
