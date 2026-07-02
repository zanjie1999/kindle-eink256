.class public Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;
.super Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;
.source "GroupLayoutDef.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.def.layouts.GroupLayoutDef"


# instance fields
.field public final bodyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;"
        }
    .end annotation
.end field

.field public final footerGroups:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Z)V
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
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 36
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->bodyGroups:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->footerGroups:Ljava/util/List;

    .line 38
    iput-boolean p5, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->providesHeaderInfo:Z

    return-void
.end method
