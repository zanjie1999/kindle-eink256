.class Lcom/amazon/android/util/RestrictionUtils$1;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/util/RestrictionUtils;->checkParentalRestriction(Lcom/amazon/kcp/library/models/BookType;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/util/RestrictionUtils;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookType:Lcom/amazon/kcp/library/models/BookType;

.field final synthetic val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Landroid/app/Activity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/android/util/RestrictionUtils$1;->this$0:Lcom/amazon/android/util/RestrictionUtils;

    iput-object p2, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$bookType:Lcom/amazon/kcp/library/models/BookType;

    iput-object p3, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    iput-object p4, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "checkParentalRestrictioninsidethread"

    .line 50
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 51
    sget-object v2, Lcom/amazon/android/util/RestrictionUtils$2;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    iget-object v3, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$bookType:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->this$0:Lcom/amazon/android/util/RestrictionUtils;

    iget-object v2, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    sget-object v3, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->NEWSSTAND:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    iget-object v4, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/android/util/RestrictionUtils;->access$000(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->this$0:Lcom/amazon/android/util/RestrictionUtils;

    iget-object v2, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    sget-object v3, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->DOCS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    iget-object v4, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/android/util/RestrictionUtils;->access$000(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/amazon/android/util/RestrictionUtils$1;->this$0:Lcom/amazon/android/util/RestrictionUtils;

    iget-object v2, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$handler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    sget-object v3, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->BOOKS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    iget-object v4, p0, Lcom/amazon/android/util/RestrictionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/android/util/RestrictionUtils;->access$000(Lcom/amazon/android/util/RestrictionUtils;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;Landroid/app/Activity;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 76
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
