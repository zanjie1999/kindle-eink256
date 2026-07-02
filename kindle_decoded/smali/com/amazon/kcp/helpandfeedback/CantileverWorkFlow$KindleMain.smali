.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KindleMain"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "c5d39aa7"

    const/4 v2, 0x1

    .line 30
    invoke-direct {p0, v0, v1, v2, v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
