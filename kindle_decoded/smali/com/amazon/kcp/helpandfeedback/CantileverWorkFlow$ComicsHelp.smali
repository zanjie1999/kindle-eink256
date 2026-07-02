.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComicsHelp"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "COMICS_HELP"

    const-string v1, "9c4ada28-f8eb-4b66-ac47-e27f3b618660"

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
