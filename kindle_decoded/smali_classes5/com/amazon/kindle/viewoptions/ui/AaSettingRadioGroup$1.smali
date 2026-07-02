.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$1;
.super Ljava/lang/Object;
.source "AaSettingRadioGroup.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $changeHandler:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$1;->$changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "radioGroup.findViewById(radioButtonId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RadioButton;

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 56
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$1;->$changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
