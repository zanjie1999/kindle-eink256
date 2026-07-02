.class public final Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;
.super Ljava/lang/Object;
.source "InBookChromeFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;,
        Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;,
        Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;,
        Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;,
        Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInBookChromeFastMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InBookChromeFastMetrics.kt\ncom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n13651#2,3:279\n1#3:282\n*E\n*S KotlinDebug\n*F\n+ 1 InBookChromeFastMetrics.kt\ncom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics\n*L\n207#1,3:279\n*E\n"
.end annotation


# static fields
.field private static final AUDIBLE_PLUGIN:Ljava/lang/String; = "Audible"

.field private static final AUDIBLE_SWITCH_AUDIOBOOK_EVENT:Ljava/lang/String; = "AudibleSwitchAudiobook"

.field private static final AUDIBLE_UPGRADE_EVENT:Ljava/lang/String; = "AudibleUpgrade"

.field private static final END_ACTION_MODULE_PLUGIN:Ljava/lang/String; = "EndActionModule"

.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

.field private static final MAP_CONTEXT_KEY:Ljava/lang/String; = "context"

.field private static final PLUGIN_CONTEXT_CHROME:Ljava/lang/String; = "Chrome"

.field private static final PLUGIN_CONTEXT_END_ACTIONS:Ljava/lang/String; = "EndActions"

.field private static final PLUGIN_CONTEXT_LEFT_NAV:Ljava/lang/String; = "LeftNav"

.field private static final PLUGIN_CONTEXT_START_ACTIONS:Ljava/lang/String; = "StartActions"

.field private static final TAG:Ljava/lang/String;

.field private static currentPosition:Ljava/lang/Integer;

.field private static inMultiWindowMode:Ljava/lang/String;

.field private static isNlnSupported:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    .line 15
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(InBookChromeFastMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cleanText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 204
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Locale.ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v5, p1, v2

    add-int/lit8 v6, v3, 0x1

    if-eqz v4, :cond_0

    .line 209
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, p1, v3

    const/4 v4, 0x0

    :cond_0
    const/16 v3, 0x5f

    if-ne v5, v3, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    .line 218
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "_"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final recordAudibleMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "LeftNav"

    .line 190
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "AudibleSwitchAudiobook"

    .line 191
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 192
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_LISTENING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "AudibleUpgrade"

    .line 193
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->UPGRADE_WITH_AUDIO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final recordEndActionModuleMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 223
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Chrome"

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 233
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "LeftNav"

    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 227
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_1
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_2
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "EndActions"

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 241
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->END_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "StartActions"

    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 237
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->START_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4377e1a5 -> :sswitch_3
        0x3f2197c2 -> :sswitch_2
        0x6686577c -> :sswitch_1
        0x7843be9a -> :sswitch_0
    .end sparse-switch
.end method

.method public static final recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionCause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording chrome metrics:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contextType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actionCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 143
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->isNlnSupported:Ljava/lang/String;

    .line 144
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->inMultiWindowMode:Ljava/lang/String;

    .line 145
    sget-object v8, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->currentPosition:Ljava/lang/Integer;

    .line 146
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    const-string v2, "settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFooterContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings.footerContentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->cleanText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->HORIZONTAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/MetricsUtils;->getScreenOrientationForMetrics()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->VERTICAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    .line 156
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    .line 157
    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;->getValue()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    .line 156
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetricsHelper(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 137
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;->TAP:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;)V

    return-void
.end method

.method private final recordMetricsHelper(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nlnSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readingMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", multiWindow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceOrientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readingProgressType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_7

    .line 262
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CHROME_INSTRUMENTATION_BETA:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 263
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CHROME_INSTRUMENTATION_BETA:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 261
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 265
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->CONTEXT:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 266
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->ACTION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p3, :cond_0

    .line 267
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->NLN_SUPPORTED:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_0
    if-eqz p4, :cond_1

    .line 268
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->READING_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_1
    if-eqz p5, :cond_2

    .line 269
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->IN_MULTI_WINDOW_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_2
    if-eqz p6, :cond_3

    .line 270
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->DEVICE_ORIENTATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p6}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_3
    if-eqz p7, :cond_4

    .line 271
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->CURRENT_POSITION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_4
    if-eqz p8, :cond_5

    .line 272
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->READING_PROGRESS_TYPE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_5
    if-eqz p9, :cond_6

    .line 273
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->ACTION_CAUSE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p9}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_6
    const-string p1, "getPayloadBuilder(\n     \u2026alue, it) }\n            }"

    .line 263
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_7
    return-void
.end method

.method public static final recordMetricsInPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Plugin: "

    if-eqz p2, :cond_5

    .line 173
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "context"

    .line 176
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " context is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_2
    const-string v0, "Audible"

    .line 181
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordAudibleMetrics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "EndActionModule"

    .line 183
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 184
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordEndActionModuleMetrics(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 174
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " keyValuePairs is null or empty"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method

.method public static final setCurrentPosition(I)V
    .locals 2

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->currentPosition:Ljava/lang/Integer;

    .line 129
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set current position to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->currentPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setInMultiWindowMode(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "True"

    goto :goto_0

    :cond_0
    const-string p0, "False"

    .line 122
    :goto_0
    sput-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->inMultiWindowMode:Ljava/lang/String;

    .line 123
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set in multiwindow mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->inMultiWindowMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setIsNlnSupported(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "True"

    goto :goto_0

    :cond_0
    const-string p0, "False"

    .line 116
    :goto_0
    sput-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->isNlnSupported:Ljava/lang/String;

    .line 117
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set nln supported to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->isNlnSupported:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
