.class public final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "LibraryDebugMenuPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$convertStringToMetadataObject(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->convertStringToMetadataObject(Lcom/amazon/kindle/content/ContentMetadataField;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final convertStringToMetadataObject(Lcom/amazon/kindle/content/ContentMetadataField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 316
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "field.valueClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "valueOf"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "field.valueClass.getDecl\u2026Type).invoke(null, value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 324
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadataField;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Float;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 325
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method private final setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 333
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 334
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 337
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final setupChangeContentMetadataSection(Landroid/view/ViewGroup;)V
    .locals 9

    .line 202
    sget v0, Lcom/amazon/kindle/krl/R$id;->content_metadata_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.Spinner"

    if-eqz v0, :cond_4

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    .line 203
    sget v0, Lcom/amazon/kindle/krl/R$id;->asin_field:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_3

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 204
    sget v0, Lcom/amazon/kindle/krl/R$id;->value_field:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 205
    sget v0, Lcom/amazon/kindle/krl/R$id;->set_value_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/Button;

    .line 206
    invoke-static {}, Lcom/amazon/kindle/content/ContentMetadataField;->values()[Lcom/amazon/kindle/content/ContentMetadataField;

    move-result-object v2

    .line 207
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    sget v8, Lcom/amazon/kindle/krl/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {v3, v7, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 209
    sget v2, Lcom/amazon/kindle/krl/R$id;->is_sample_spinner:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/widget/Spinner;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    .line 211
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 213
    new-instance p1, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setupListConsumptionsFailureSection(Landroid/view/ViewGroup;)V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    sget v2, Lcom/amazon/kindle/krl/R$id;->list_consumptions_failure_spinner:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 277
    sget v3, Lcom/amazon/kindle/krl/R$id;->set_list_consumptions_failure_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x193

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/16 v1, 0x198

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/16 v1, 0x1f4

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x194

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const-string v1, "listSpinner"

    .line 283
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/krl/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {v1, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    new-instance v1, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupRemoveConsumptionsFailureSection(Landroid/view/ViewGroup;)V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    sget v2, Lcom/amazon/kindle/krl/R$id;->remove_consumptions_failure_spinner:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 295
    sget v3, Lcom/amazon/kindle/krl/R$id;->set_remove_consumptions_failure_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x193

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/16 v1, 0x198

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/16 v1, 0x1f4

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x194

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const-string/jumbo v1, "removeSpinner"

    .line 301
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/krl/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {v1, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 303
    new-instance v1, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupRemoveConsumptionsFailureSection$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupRemoveConsumptionsFailureSection$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupSearchLibraryResultsLimit(Landroid/view/ViewGroup;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    const-string v1, "DebugSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    sget v1, Lcom/amazon/kindle/krl/R$id;->search_library_result_cap:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 251
    sget v2, Lcom/amazon/kindle/krl/R$id;->search_library_result_cap_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v2, "SearchLibraryResultsLimit"

    const/4 v3, -0x1

    .line 253
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 255
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    new-instance v2, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupTimeInMinutesForInvalidDownloadsCheck(Landroid/view/ViewGroup;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    const-string v1, "DebugSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    sget v1, Lcom/amazon/kindle/krl/R$id;->days_passed_field:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 234
    sget v2, Lcom/amazon/kindle/krl/R$id;->set_days_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 235
    new-instance v2, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Library Debug Options"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 8

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget v1, Lcom/amazon/kindle/krl/R$layout;->library_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    invoke-static {}, Lcom/amazon/kcp/debug/DebugButtons;->getAll()Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/debug/DebugToggleButton;

    .line 35
    new-instance v2, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setId(I)V

    .line 38
    sget v3, Lcom/amazon/kindle/krl/R$id;->debug_buttons_parent:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked()Z

    move-result v5

    .line 42
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;

    invoke-direct {v6, p0, v1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Lcom/amazon/kcp/debug/DebugToggleButton;)V

    move-object v1, p0

    move-object v2, v0

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 51
    :cond_0
    sget v3, Lcom/amazon/kindle/krl/R$id;->enable_collection_download:I

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isCollectionDownloadEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 53
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$2;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "collection download"

    move-object v1, p0

    move-object v2, v0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    sget v3, Lcom/amazon/kindle/krl/R$id;->large_library:I

    .line 59
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isLargeLibraryEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 60
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$3;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Large Library"

    move-object v1, p0

    .line 58
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    sget v3, Lcom/amazon/kindle/krl/R$id;->details_view:I

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isDetailsViewEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 71
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$4;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$4;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Details View"

    move-object v1, p0

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget v3, Lcom/amazon/kindle/krl/R$id;->delete_books_from_account:I

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isDeleteBooksFromAccountEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 82
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$5;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$5;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Delete Books from Account"

    move-object v1, p0

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    sget v3, Lcom/amazon/kindle/krl/R$id;->personal_lending_filter:I

    .line 88
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isPersonalLendingFilterEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 89
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Personal Lending Filter"

    move-object v1, p0

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    sget v3, Lcom/amazon/kindle/krl/R$id;->kindle_owners_lending_library:I

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isKindleOwnersLendingLibraryFilterEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 96
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$7;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$7;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Kindle Owners\' Lending Library Filter"

    move-object v1, p0

    .line 94
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    sget v3, Lcom/amazon/kindle/krl/R$id;->rental_filter:I

    .line 102
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isRentalFilterEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 103
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$8;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$8;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Rental Filter"

    move-object v1, p0

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_search_spell_correction:I

    .line 109
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isLibrarySearchSpellCorrectionEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 110
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$9;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$9;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Library Search Spell Correction"

    move-object v1, p0

    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_search_wayfinder_preprod_service:I

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isWayFinderPreProdServiceEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 121
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$10;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$10;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "WayFinder search pre-prod service"

    move-object v1, p0

    .line 119
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_store_search_filter_sort:I

    .line 131
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isWayfinderStoreSearchFilterSortEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 132
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$11;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$11;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "WayFinder store search filter sort"

    move-object v1, p0

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_store_search_as_you_type_removal:I

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isWayfinderStoreSearchAsYouTypeRemovalEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 143
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "WayFinder store search as you type removal"

    move-object v1, p0

    .line 141
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_store_clickstream_attribution_metrics_publish:I

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isWayfinderClickstreamAttributionMetricsPublishEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 155
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$13;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$13;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "WayFinder store clickstream attribution metrics publish"

    move-object v1, p0

    .line 152
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    sget v3, Lcom/amazon/kindle/krl/R$id;->search_fallback_detection_metrics_publish:I

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isWayfinderSearchFallbackDetecionMetricsPublishEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 169
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$14;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$14;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "WayFinder search fallback detection metrics publish"

    move-object v1, p0

    .line 166
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    sget v3, Lcom/amazon/kindle/krl/R$id;->library_search_cx_updates:I

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->isLibrarySearchCXUpdatesEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 182
    new-instance v6, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$15;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$15;-><init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V

    const-string v4, "Search CX Updates & Inline Search Suggestions"

    move-object v1, p0

    .line 180
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupChangeContentMetadataSection(Landroid/view/ViewGroup;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupTimeInMinutesForInvalidDownloadsCheck(Landroid/view/ViewGroup;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupListConsumptionsFailureSection(Landroid/view/ViewGroup;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupRemoveConsumptionsFailureSection(Landroid/view/ViewGroup;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupSearchLibraryResultsLimit(Landroid/view/ViewGroup;)V

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
