.class public final Lcom/amazon/kindle/viewoptions/themes/AaTheme;
.super Ljava/lang/Object;
.source "AaTheme.kt"


# instance fields
.field private builtInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

.field private final checkedDrawable:I

.field private isChecked:Z

.field private isUndo:Z

.field private final themeId:I

.field private title:Ljava/lang/String;

.field private type:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field private final uncheckedDrawable:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/ksdk/presets/ReadingPresetType;Lcom/amazon/ksdk/presets/BuiltInPresetType;II)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->themeId:I

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->type:Lcom/amazon/ksdk/presets/ReadingPresetType;

    iput-object p4, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->builtInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    iput p5, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->checkedDrawable:I

    iput p6, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->uncheckedDrawable:I

    return-void
.end method


# virtual methods
.method public final getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->builtInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    return-object v0
.end method

.method public final getCheckedDrawable()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->checkedDrawable:I

    return v0
.end method

.method public final getThemeId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->themeId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->type:Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-object v0
.end method

.method public final getUncheckedDrawable()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->uncheckedDrawable:I

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked:Z

    return v0
.end method

.method public final isUndo()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isUndo:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/amazon/ksdk/presets/ReadingPresetType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->type:Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-void
.end method

.method public final setUndo(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isUndo:Z

    return-void
.end method
