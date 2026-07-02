.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KindleHelpV2"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "HELP_AND_FEEDBACK"

    const-string v1, "aa0d99e9-7799-4fbe-a5c6-d8f87331fc32"

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
