.class public Lcom/amazon/kindle/panels/PanelProviderState;
.super Ljava/lang/Object;
.source "PanelProviderState.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final stateType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/panels/PanelProviderState;->activity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/panels/PanelProviderState;->stateType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/panels/PanelProviderState;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getStateType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/panels/PanelProviderState;->stateType:Ljava/lang/String;

    return-object v0
.end method
