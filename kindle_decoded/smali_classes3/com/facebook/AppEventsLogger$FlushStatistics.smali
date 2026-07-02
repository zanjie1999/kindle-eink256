.class Lcom/facebook/AppEventsLogger$FlushStatistics;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushStatistics"
.end annotation


# instance fields
.field public numEvents:I

.field public result:Lcom/facebook/AppEventsLogger$FlushResult;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 836
    iput v0, p0, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 837
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AppEventsLogger$1;)V
    .locals 0

    .line 835
    invoke-direct {p0}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>()V

    return-void
.end method
