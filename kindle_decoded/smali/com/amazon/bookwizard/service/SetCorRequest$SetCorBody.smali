.class Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;
.super Ljava/lang/Object;
.source "SetCorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/SetCorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetCorBody"
.end annotation


# instance fields
.field private cor:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;->cor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/SetCorRequest$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;-><init>(Ljava/lang/String;)V

    return-void
.end method
