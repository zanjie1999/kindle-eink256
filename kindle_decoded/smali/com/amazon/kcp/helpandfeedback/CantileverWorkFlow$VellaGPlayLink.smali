.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VellaGPlayLink"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-string v1, "VELLA_GPLAY_LINK"

    const-string v2, "action/start/561741d9-fd19-4b70-bee4-dd971cbb269f"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
