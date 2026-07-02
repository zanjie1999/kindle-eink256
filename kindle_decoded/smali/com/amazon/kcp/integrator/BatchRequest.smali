.class public final Lcom/amazon/kcp/integrator/BatchRequest;
.super Ljava/lang/Object;
.source "Batch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/integrator/BatchRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/integrator/BatchRequest$Companion;


# instance fields
.field private final account:Ljava/lang/String;

.field private final fulfilled:Lcom/amazon/kcp/integrator/Batch;

.field private final request:Lcom/amazon/kcp/integrator/Batch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/integrator/BatchRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/integrator/BatchRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/integrator/BatchRequest;->Companion:Lcom/amazon/kcp/integrator/BatchRequest$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BatchRequest;->account:Ljava/lang/String;

    .line 123
    new-instance p1, Lcom/amazon/kcp/integrator/Batch;

    invoke-direct {p1}, Lcom/amazon/kcp/integrator/Batch;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BatchRequest;->request:Lcom/amazon/kcp/integrator/Batch;

    .line 124
    new-instance p1, Lcom/amazon/kcp/integrator/Batch;

    invoke-direct {p1}, Lcom/amazon/kcp/integrator/Batch;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BatchRequest;->fulfilled:Lcom/amazon/kcp/integrator/Batch;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/BatchRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAccount()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BatchRequest;->account:Ljava/lang/String;

    return-object v0
.end method

.method public final getFulfilled()Lcom/amazon/kcp/integrator/Batch;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BatchRequest;->fulfilled:Lcom/amazon/kcp/integrator/Batch;

    return-object v0
.end method

.method public final getRequest()Lcom/amazon/kcp/integrator/Batch;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BatchRequest;->request:Lcom/amazon/kcp/integrator/Batch;

    return-object v0
.end method
