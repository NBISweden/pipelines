nextflow.preview.dsl=2

/*
 * Default pipeline parameters. They can be overriden on the command line eg.
 * given `params.foo` specify on the run command line `--foo some_value`.
 */

params.gff_annotation = "$baseDir/test_data/test.gff"
params.outdir = "results"

log.info """\
 Functional annotation input preparation workflow
 ===================================
 gff_annotation : ${params.gff_annotation}
 outdir         : ${params.outdir}
 """

include './../modules/annotation_modules'

workflow {

	main:
		functional_annotation_input_preparation(params.gff_file)

	publish:

}
