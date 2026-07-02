.class Lcom/amazon/kcp/reader/ui/PinyinFooter$1;
.super Ljava/lang/Object;
.source "PinyinFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/PinyinFooter;->getFooterText()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/PinyinFooter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 71
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    return-void
.end method
