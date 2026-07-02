.class Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/ViewPager;)V
    .locals 0

    .line 2057
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/ViewPager;Lcom/amazon/whispersync/android/support/v4/view/ViewPager$1;)V
    .locals 0

    .line 2057
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2064
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->dataSetChanged()V

    return-void
.end method
