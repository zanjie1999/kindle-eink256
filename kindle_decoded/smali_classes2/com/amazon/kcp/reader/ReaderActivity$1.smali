.class Lcom/amazon/kcp/reader/ReaderActivity$1;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 599
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->access$100(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V

    .line 600
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->recordChangeInSettings(Ljava/lang/String;Z)V

    return-void
.end method
