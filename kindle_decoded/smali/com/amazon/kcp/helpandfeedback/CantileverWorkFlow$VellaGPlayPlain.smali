.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VellaGPlayPlain"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-string v1, "VELLA_GPLAY_PLAIN"

    const-string v2, "action/start/6a74ca6a-83f1-41f4-8716-7e70d856e689"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
