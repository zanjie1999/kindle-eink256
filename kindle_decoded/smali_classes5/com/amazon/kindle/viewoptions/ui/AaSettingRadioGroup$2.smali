.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;
.super Ljava/lang/Object;
.source "AaSettingRadioGroup.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $changeHandler:Lkotlin/jvm/functions/Function1;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $vectorsChecked:[I

.field final synthetic $vectorsUnchecked:[I

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;Lkotlin/jvm/functions/Function1;Landroid/content/Context;[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$changeHandler:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$vectorsUnchecked:[I

    iput-object p5, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$vectorsChecked:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "radioGroup.findViewById(radioButtonId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RadioButton;

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->access$getRadioGroupView$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "theme_change"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->access$getRadioGroupView$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    invoke-static {v1, p2, v0, v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->access$scrollToButton(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;Landroid/widget/RadioButton;IZ)V

    const/4 p2, 0x0

    const-string/jumbo v1, "radioGroup"

    .line 106
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    :goto_1
    if-ge p2, v1, :cond_2

    const-string/jumbo v2, "radioGroup.getChildAt(i)"

    if-eq p2, v0, :cond_1

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$vectorsUnchecked:[I

    aget v4, v4, p2

    invoke-static {v2, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 110
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;->$vectorsChecked:[I

    aget v4, v4, p2

    invoke-static {v2, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
