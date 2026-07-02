.class public Lcom/amazon/kcp/debug/LogLevelSpinner;
.super Landroid/widget/Spinner;
.source "LogLevelSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 8

    .line 32
    invoke-super {p0}, Landroid/widget/Spinner;->onFinishInflate()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {}, Lcom/amazon/kindle/log/ILogger$Level;->values()[Lcom/amazon/kindle/log/ILogger$Level;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, v1, v3

    .line 37
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/amazon/kindle/log/Log;->getThreshold()Lcom/amazon/kindle/log/ILogger$Level;

    move-result-object v7

    if-ne v7, v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->setSelection(I)V

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

    .line 52
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/amazon/kindle/log/ILogger$Level;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/log/ILogger$Level;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->setLogLevel(Lcom/amazon/kindle/log/ILogger$Level;)V

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
