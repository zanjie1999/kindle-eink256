.class public Lcom/amazon/identity/auth/device/fu;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field public final directedId:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final nd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/fu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fu;->directedId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fu;->displayName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    return-void
.end method
