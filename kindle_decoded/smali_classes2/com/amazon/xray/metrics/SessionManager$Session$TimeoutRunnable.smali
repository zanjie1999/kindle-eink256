.class Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/SessionManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/metrics/SessionManager$Session;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/metrics/SessionManager$Session;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;->this$0:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/metrics/SessionManager$Session;Lcom/amazon/xray/metrics/SessionManager$1;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;-><init>(Lcom/amazon/xray/metrics/SessionManager$Session;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;->this$0:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-static {v0}, Lcom/amazon/xray/metrics/SessionManager;->closeSession(Lcom/amazon/xray/metrics/SessionManager$Session;)V

    return-void
.end method
