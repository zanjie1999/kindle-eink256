.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallbackCentral"
.end annotation


# instance fields
.field public final bookmarkListCloseCallback:Lcom/amazon/foundation/IIntCallback;

.field public final bookmarkListOpenCallback:Lcom/amazon/foundation/ICallback;

.field public final closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

.field public final crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

.field public final orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

.field public final pageNumberCalcEventCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end field

.field public final textContainerInteractionCallBack:Lcom/amazon/foundation/IIntCallback;

.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field public final thumbnailAfterUseCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 3031
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3033
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

    .line 3083
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->textContainerInteractionCallBack:Lcom/amazon/foundation/IIntCallback;

    .line 3105
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

    .line 3124
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    .line 3145
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->pageNumberCalcEventCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 3165
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$6;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$6;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->bookmarkListOpenCallback:Lcom/amazon/foundation/ICallback;

    .line 3173
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$7;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$7;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->bookmarkListCloseCallback:Lcom/amazon/foundation/IIntCallback;

    .line 3205
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$8;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$8;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->thumbnailAfterUseCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method
