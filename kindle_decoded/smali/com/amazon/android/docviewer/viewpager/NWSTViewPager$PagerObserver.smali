.class Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "NWSTViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;->this$0:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;-><init>(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2349
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;->this$0:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;->this$0:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->dataSetChanged()V

    return-void
.end method
