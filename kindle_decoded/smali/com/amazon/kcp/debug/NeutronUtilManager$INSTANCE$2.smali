.class final Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NeutronUtilManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/NeutronUtilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;
    .locals 10

    .line 20
    new-instance v9, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ZZZLcom/amazon/kindle/krx/events/IPubSubEventsManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/NeutronUtilManager$INSTANCE$2;->invoke()Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;

    move-result-object v0

    return-object v0
.end method
