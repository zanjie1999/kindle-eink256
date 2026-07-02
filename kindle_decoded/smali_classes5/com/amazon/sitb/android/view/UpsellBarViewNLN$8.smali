.class Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;
.super Ljava/lang/Object;
.source "UpsellBarViewNLN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateViewModel(Lcom/amazon/sitb/android/model/UpsellModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

.field final synthetic val$failureCode:Ljava/lang/String;

.field final synthetic val$newState:Lcom/amazon/sitb/android/BookState;

.field final synthetic val$percentComplete:I

.field final synthetic val$upsellTitle:Ljava/lang/String;

.field final synthetic val$wasPurchasedThisReadingSession:Z


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Lcom/amazon/sitb/android/BookState;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iput-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$newState:Lcom/amazon/sitb/android/BookState;

    iput p3, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$percentComplete:I

    iput-object p4, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$upsellTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$failureCode:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$wasPurchasedThisReadingSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$newState:Lcom/amazon/sitb/android/BookState;

    iget v2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$percentComplete:I

    iget-object v3, v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->price:Lcom/amazon/sitb/android/BookPrice;

    iget-object v4, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$upsellTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$failureCode:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->val$wasPurchasedThisReadingSession:Z

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUI(Lcom/amazon/sitb/android/BookState;ILcom/amazon/sitb/android/BookPrice;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 287
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    sget-object v1, Lcom/amazon/sitb/android/Metric;->DEVICE_SIZE_SHOWN:Lcom/amazon/sitb/android/Metric;

    sget-object v2, Lcom/amazon/sitb/android/Metric;->DEVICE_ORIENTATION_SHOWN:Lcom/amazon/sitb/android/Metric;

    invoke-static {v0, v1, v2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->access$000(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method
