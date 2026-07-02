.class public Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/CalendarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarDeserializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->this$0:Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>()V

    return-void
.end method
