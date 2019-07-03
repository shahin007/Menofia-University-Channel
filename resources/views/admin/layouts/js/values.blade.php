<script>
    var values = @json( $values );
    $('input .form-control, textarea .form-control').each(function() {
        $(this).val(values[$(this).attr("name")]);
    });
</script>