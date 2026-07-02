.class Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;
.super Ljava/lang/Object;
.source "DefaultReaderLayoutCustomizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSystemUiVisibilityRunnable"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private final readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private final statusBarVisible:Z

.field final synthetic this$0:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->this$0:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->statusBarVisible:Z

    .line 143
    iput-object p3, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->canceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;ZLcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;-><init>(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->canceled:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->this$0:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->statusBarVisible:Z

    iget-object v2, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibility(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method
