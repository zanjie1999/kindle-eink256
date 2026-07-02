.class Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;
.super Lorg/threeten/bp/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$store:Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;)V
    .locals 0

    .line 727
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;->val$store:Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeTextProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getText(Lorg/threeten/bp/temporal/TemporalField;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 730
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;->val$store:Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-virtual {p1, p2, p3, p4}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;->getText(JLorg/threeten/bp/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
