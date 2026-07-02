.class public final Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComicsFeedback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "COMICS_FEEDBACK"

    const-string v1, "b7667b2d-5617-49d5-ac83-8c604ef087f9"

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
