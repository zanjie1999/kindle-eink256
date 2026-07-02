.class Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SidecarInitializerRunnable"
.end annotation


# instance fields
.field final book:Lcom/amazon/kindle/krx/content/IBook;

.field final sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/klo/sidecar/SidecarHandler;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    .line 168
    iput-object p2, p0, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v1, p0, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->init(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
