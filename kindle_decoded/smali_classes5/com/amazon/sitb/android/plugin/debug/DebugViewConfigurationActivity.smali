.class public Lcom/amazon/sitb/android/plugin/debug/DebugViewConfigurationActivity;
.super Landroid/app/Activity;
.source "DebugViewConfigurationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/amazon/kindle/sitb/R$layout;->debug_view_configuration_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 28
    sget p1, Lcom/amazon/kindle/sitb/R$id;->debug_state_spinner:I

    .line 30
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->values()[Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    move-result-object v0

    .line 32
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 33
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 35
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->setUseDebugValues(Z)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->setDebugViewState(Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
