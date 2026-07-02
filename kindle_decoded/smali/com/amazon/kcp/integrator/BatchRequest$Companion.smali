.class public final Lcom/amazon/kcp/integrator/BatchRequest$Companion;
.super Ljava/lang/Object;
.source "Batch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/integrator/BatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/BatchRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initWithAccount(Ljava/lang/String;)Lcom/amazon/kcp/integrator/BatchRequest;
    .locals 2

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/amazon/kcp/integrator/BatchRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/integrator/BatchRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
