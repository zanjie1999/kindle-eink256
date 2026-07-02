.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tts"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-string v1, "TTS"

    const-string v2, "action/start/408a16c1-6794-44ae-a872-705324e401a8"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
